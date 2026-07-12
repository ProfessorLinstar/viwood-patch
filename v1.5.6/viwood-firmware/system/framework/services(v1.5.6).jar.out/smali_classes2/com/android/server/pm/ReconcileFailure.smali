.class final Lcom/android/server/pm/ReconcileFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "ReconcileFailure.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconcile failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerException;)V
    .locals 1

    .line 35
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconcile failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x6e

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public static ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/ReconcileFailure;
    .locals 1

    .line 23
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ReconcileFailure;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
