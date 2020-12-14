// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AWS",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "AWSCore", targets: ["AWSCore"]),
        .library(name: "AWSS3", targets: ["AWSS3"])
    ],
    targets: [
        .target(
            name: "AWSCore",
            path: "AWSCore",
            exclude: [
                "Reachability/LICENCE.txt",
                "UICKeyChainStore/README.md",
                "FMDB/LICENSE.txt",
                "XMLDictionary/LICENCE.md",
                "FMDB/README.markdown",
                "GZIP/README.md",
                "UICKeyChainStore/LICENSE",
                "Mantle/README.md",
                "TMCache/README.md",
                "Info.plist",
                "Reachability/README.md",
                "Mantle/LICENSE.md",
                "TMCache/LICENSE.txt",
                "XMLDictionary/README.md",
                "GZIP/LICENCE.md"
            ],
            cSettings: [
                .headerSearchPath("internal")
            ]
        ),
        .target(
            name: "AWSS3",
            dependencies: ["AWSCore"],
            path: "AWSS3",
            exclude: [
                "Info.plist"
            ]
        )
    ]
)
