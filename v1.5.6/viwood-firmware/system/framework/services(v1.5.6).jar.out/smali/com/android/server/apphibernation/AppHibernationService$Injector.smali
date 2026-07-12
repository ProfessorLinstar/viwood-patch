.class public interface abstract Lcom/android/server/apphibernation/AppHibernationService$Injector;
.super Ljava/lang/Object;
.source "AppHibernationService.java"


# virtual methods
.method public abstract getActivityManager()Landroid/app/IActivityManager;
.end method

.method public abstract getBackgroundExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getGlobalLevelDiskStore()Lcom/android/server/apphibernation/HibernationStateDiskStore;
.end method

.method public abstract getPackageManager()Landroid/content/pm/IPackageManager;
.end method

.method public abstract getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
.end method

.method public abstract getStorageStatsManager()Landroid/app/usage/StorageStatsManager;
.end method

.method public abstract getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
.end method

.method public abstract getUserLevelDiskStore(I)Lcom/android/server/apphibernation/HibernationStateDiskStore;
.end method

.method public abstract getUserManager()Landroid/os/UserManager;
.end method

.method public abstract isOatArtifactDeletionEnabled()Z
.end method
