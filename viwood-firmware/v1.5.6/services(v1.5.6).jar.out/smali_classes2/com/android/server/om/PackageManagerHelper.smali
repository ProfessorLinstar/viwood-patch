.class public interface abstract Lcom/android/server/om/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# virtual methods
.method public abstract doesTargetDefineOverlayable(Ljava/lang/String;I)Z
.end method

.method public abstract enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getConfigSignaturePackage()Ljava/lang/String;
.end method

.method public abstract getNamedActors()Ljava/util/Map;
.end method

.method public abstract getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;
.end method

.method public abstract getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract initializeForUser(I)Landroid/util/ArrayMap;
.end method

.method public abstract signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
