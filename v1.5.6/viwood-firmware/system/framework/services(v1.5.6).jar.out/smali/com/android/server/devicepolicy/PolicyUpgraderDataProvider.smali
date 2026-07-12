.class public interface abstract Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;
.super Ljava/lang/Object;
.source "PolicyUpgraderDataProvider.java"


# virtual methods
.method public abstract getAdminInfoSupplier(I)Ljava/util/function/Function;
.end method

.method public abstract getPlatformSuspendedPackages(I)Ljava/util/List;
.end method

.method public abstract getUsersForUpgrade()[I
.end method

.method public abstract makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;
.end method

.method public abstract makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;
.end method
