.class public Lcom/android/server/wm/AsyncRotationController$Operation;
.super Ljava/lang/Object;
.source "AsyncRotationController.java"


# instance fields
.field public final mActions:I

.field public mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mIsCompletionPending:Z

.field public mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput p1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    return-void
.end method


# virtual methods
.method public isValidSeamless()Z
    .locals 2

    .line 754
    iget v0, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation{a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
