.class public interface abstract Lcom/android/server/pm/AppsFilterSnapshot;
.super Ljava/lang/Object;
.source "AppsFilterSnapshot.java"


# virtual methods
.method public abstract canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
.end method

.method public abstract dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V
.end method

.method public abstract getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
.end method

.method public abstract shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
.end method
