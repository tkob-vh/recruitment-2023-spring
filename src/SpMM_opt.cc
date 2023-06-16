#include "SpMM.hh"
#include<omp.h>
#include<numeric>
Matrix SpMM_opt(const Matrix &A, const SparseMatrix &B) {
    if (A.size() != B.size()) return Matrix();
    int A_rows, A_cols, B_rows, B_cols;
    std::tie(A_rows, A_cols) = A.size();
    std::tie(B_rows, B_cols) = B.size();
    vector<float> data(A_rows*B_rows);

    //openMP变量定义
    int thread_num=129;
    omp_set_num_threads(thread_num);

    //CSR

    // 先计算所有非零元的个数以及每行各有多少非零元
    int num_notZero;
    vector<int> notZeroPerRow(B_rows);
  # pragma omp parallel for  reduction(+:num_notZero)
    for(int i=0;i<B_rows;++i){
        int num_block=B_cols/4;
        int j=0;
        for(;j<4*num_block;j+=4){
            if(B.at(i,j)){
                ++num_notZero;
                ++notZeroPerRow[i];
            }
            if(B.at(i,j+1)){
                ++num_notZero;
                ++notZeroPerRow[i];
            }
            if(B.at(i,j+2)){
                ++num_notZero;
                ++notZeroPerRow[i];
            }
            if(B.at(i,j+3)){
                ++num_notZero;
                ++notZeroPerRow[i];
            }
        }
        for(;j<B_cols;++j){
            if(B.at(i,j)){
                ++num_notZero;
                ++notZeroPerRow[i];
            }
        }
    }

 //设置三个vector大小，并先计算行偏移量。
    vector<float> B_values(num_notZero,0);
    vector<int> B_row_off(B_rows,0);
    vector<int> B_col_ind(num_notZero,0);
    partial_sum(notZeroPerRow.cbegin(),notZeroPerRow.cend(),B_row_off.begin()+1);

# pragma omp parallel for
    for(int i=0;i<B_rows;++i){
        int num=0;
        # pragma omp parallel for schedule(simd,static,1) private(num)
        for(int j=0;j<B_rows;++j){
            if(B.at(i,j)){
                B_values[B_row_off[i]+num]=B.at(i,j);
                B_col_ind[B_row_off[i]+num]=j;
                ++num;
            }
        }
    }

//矩阵乘法
# pragma omp parallel for schedule(simd,dynamic)
    for(int i=0;i<A_rows;++i){
            for(int j=0;j<B_rows;++j){
            float sum=0;
            # pragma omp simd reduction(+:sum)
            for(int k=B_row_off[j];k<B_row_off[j+1];++k){
                    sum+=B_values[k]*A.at(i,B_col_ind[k]);
                }
                data[i*B_rows+j]=sum;
            }
    }



    return Matrix(data,A_rows,B_rows);
}                                                                                          
