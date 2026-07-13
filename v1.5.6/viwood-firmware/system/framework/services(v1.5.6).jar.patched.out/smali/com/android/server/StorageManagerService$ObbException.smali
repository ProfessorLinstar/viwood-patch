.class Lcom/android/server/StorageManagerService$ObbException;
.super Ljava/lang/Exception;
.source "StorageManagerService.java"


# instance fields
.field public final status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 4430
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4431
    iput p1, p0, Lcom/android/server/StorageManagerService$ObbException;->status:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .line 4435
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4436
    iput p1, p0, Lcom/android/server/StorageManagerService$ObbException;->status:I

    return-void
.end method
