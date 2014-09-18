# RealFakes [![Build Status](https://travis-ci.org/rbaumbach/RealFakes.svg?branch=master)](https://travis-ci.org/rbaumbach/RealFakes)

A Repo that contains "Real Fake" objects that can be used for testing iOS applications.

## Introduction

This project will contain all the fake objects that I use for testing.  Real Fakes can be used to stand in for real object dependencies in spec/test files and provide a way to store off parameters of methods called (particularly helpful with blocks, requires less setup than mocks).  Since I've used these fakes across various applications, it will be helpful to keep these contained in one project.

## Adding RealFakes to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add RealFakes to your project.

1.  Add RealFakes to your Podfile `pod 'RealFakes'`.
2.  Install the pod(s) by running `pod install`.
3.  Add RealFakes to your files using `#import <RealFakes/RealFakes.h>`.

### Clone from Github

1.  Clone repository from github and copy files directly, or add it as a git submodule.
2.  Add all files from 'Source' directory to your project.

## Real Fake Class List

* AFNetworking/AFHTTPSessionManager.h -> FakeAFHTTPSessionManager
* AFNetworking/AFHTTPRequestOperationManager.h -> FakeAFHTTPRequestOperationManager
