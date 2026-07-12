.class public Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# instance fields
.field public final mReason:I

.field public final mState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mState:I

    .line 433
    iput p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mReason:I

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 0

    .line 441
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mReason:I

    return p0
.end method

.method public getState()I
    .locals 0

    .line 437
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mState:I

    return p0
.end method
