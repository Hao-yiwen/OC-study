//
//  printOc.m
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+Extra.h"
#import "Subclass.h"

void printOc(void){
    Fraction* fraction=[[Fraction alloc] init];
    [fraction setNumerator:2];
    [fraction setDenominator:10];
    [fraction display];
    [fraction extraMethod];
    
    [fraction showStatic];
    [fraction increament];
    [fraction showStatic];
    Fraction* fraction1=[[Fraction alloc]init];
    [fraction1 showStatic];
    [fraction1 increament];
    [fraction1 showStatic];
    
    Subclass* subclass=[[Subclass alloc]init];
    [subclass initV];
    [subclass distPlayVars];
}
