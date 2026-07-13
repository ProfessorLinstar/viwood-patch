.class public interface abstract Lcom/android/server/pm/pkg/SharedUserApi;
.super Ljava/lang/Object;
.source "SharedUserApi.java"


# virtual methods
.method public abstract getAppId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackageStates()Landroid/util/ArraySet;
.end method

.method public abstract getPackages()Ljava/util/List;
.end method

.method public abstract getSeInfoTargetSdkVersion()I
.end method

.method public abstract getSharedUserLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
.end method

.method public abstract getSigningDetails()Landroid/content/pm/SigningDetails;
.end method

.method public abstract isPrivileged()Z
.end method
