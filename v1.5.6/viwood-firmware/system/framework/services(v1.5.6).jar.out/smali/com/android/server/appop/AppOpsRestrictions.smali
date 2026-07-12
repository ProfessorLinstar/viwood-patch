.class public interface abstract Lcom/android/server/appop/AppOpsRestrictions;
.super Ljava/lang/Object;
.source "AppOpsRestrictions.java"


# virtual methods
.method public abstract clearGlobalRestrictions(Ljava/lang/Object;)Z
.end method

.method public abstract clearUserRestrictions(Ljava/lang/Object;)Z
.end method

.method public abstract clearUserRestrictions(Ljava/lang/Object;Ljava/lang/Integer;)Z
.end method

.method public abstract dumpRestrictions(Ljava/io/PrintWriter;ILjava/lang/String;Z)V
.end method

.method public abstract getGlobalRestriction(Ljava/lang/Object;I)Z
.end method

.method public abstract getUserRestriction(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract hasGlobalRestrictions(Ljava/lang/Object;)Z
.end method

.method public abstract hasUserRestrictions(Ljava/lang/Object;)Z
.end method

.method public abstract setGlobalRestriction(Ljava/lang/Object;IZ)Z
.end method

.method public abstract setUserRestriction(Ljava/lang/Object;IIZLandroid/os/PackageTagsList;)Z
.end method
