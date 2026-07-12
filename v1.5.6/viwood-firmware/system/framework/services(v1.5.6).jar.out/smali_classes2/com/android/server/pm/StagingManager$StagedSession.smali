.class public interface abstract Lcom/android/server/pm/StagingManager$StagedSession;
.super Ljava/lang/Object;
.source "StagingManager.java"


# virtual methods
.method public abstract abandon()V
.end method

.method public abstract containsApexSession()Z
.end method

.method public abstract getChildSessions()Ljava/util/List;
.end method

.method public abstract getCommittedMillis()J
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getParentSessionId()I
.end method

.method public abstract hasParentSessionId()Z
.end method

.method public abstract installSession()Ljava/util/concurrent/CompletableFuture;
.end method

.method public abstract isApexSession()Z
.end method

.method public abstract isCommitted()Z
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isInTerminalState()Z
.end method

.method public abstract isMultiPackage()Z
.end method

.method public abstract isSessionFailed()Z
.end method

.method public abstract isSessionReady()Z
.end method

.method public abstract sessionContains(Ljava/util/function/Predicate;)Z
.end method

.method public abstract sessionId()I
.end method

.method public abstract sessionParams()Landroid/content/pm/PackageInstaller$SessionParams;
.end method

.method public abstract setSessionFailed(ILjava/lang/String;)V
.end method

.method public abstract setSessionReady()V
.end method

.method public abstract verifySession()V
.end method
