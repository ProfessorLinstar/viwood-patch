.class public Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# instance fields
.field public final mProviderErrorCode:I

.field public final mRebootErrorCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    .line 207
    iput p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCodeForMetrics()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    iget p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    add-int/2addr v0, p0

    return v0
.end method
