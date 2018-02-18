/*
 * Copyright 2017, gRPC Authors All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import PackageDescription

let package = Package(
  name: "SwiftGRPCPlugin",
  targets: [
    Target(name: "protoc-gen-swiftgrpc",
           dependencies: [
            "TemplateEncoder",
            ]),
    Target(name: "TemplateEncoder")
  ],
  dependencies: [
    .Package(url: "https://github.com/apple/swift-protobuf.git", Version(1,0,2)),
    .Package(url: "https://github.com/kylef/Stencil.git", Version(0,10,1))
    .Package(url: "https://github.com/kylef/Spectre.git", Version(0,8,0))
  ]
)
