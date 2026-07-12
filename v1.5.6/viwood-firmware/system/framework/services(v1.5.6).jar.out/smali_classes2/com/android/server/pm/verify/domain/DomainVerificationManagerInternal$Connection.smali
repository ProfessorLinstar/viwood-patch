.class public interface abstract Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;
.super Ljava/lang/Object;
.source "DomainVerificationManagerInternal.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;


# virtual methods
.method public abstract getAllUserIds()[I
.end method

.method public abstract getCallingUid()I
.end method

.method public abstract getCallingUserId()I
.end method

.method public abstract scheduleWriteSettings()V
.end method

.method public abstract snapshot()Lcom/android/server/pm/Computer;
.end method
