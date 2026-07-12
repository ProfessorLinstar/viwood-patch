.class public interface abstract Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
.super Ljava/lang/Object;
.source "LegacyPermissionDataProvider.java"


# virtual methods
.method public abstract getAllAppOpPermissionPackages()Ljava/util/Map;
.end method

.method public abstract getGidsForUid(I)[I
.end method

.method public abstract getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
.end method

.method public abstract getLegacyPermissions()Ljava/util/List;
.end method

.method public abstract writeLegacyPermissionStateTEMP()V
.end method
