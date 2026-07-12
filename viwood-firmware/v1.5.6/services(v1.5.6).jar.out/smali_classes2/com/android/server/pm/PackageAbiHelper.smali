.class public interface abstract Lcom/android/server/pm/PackageAbiHelper;
.super Ljava/lang/Object;
.source "PackageAbiHelper.java"


# virtual methods
.method public abstract checkPackageAlignment(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ZLjava/lang/String;)I
.end method

.method public abstract deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
.end method

.method public abstract derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
.end method

.method public abstract getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
.end method

.method public abstract getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
.end method
