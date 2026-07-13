.class public Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# instance fields
.field public final mHasFocusedEditor:Z

.field public mImeDisplayId:I

.field public final mImeFocusChanged:Z

.field public final mIsStartInputByGainFocus:Z

.field public mRequestImeToken:Landroid/os/IBinder;

.field public mRequestedImeVisible:Z

.field public final mSoftInputModeState:I

.field public final mToolType:I

.field public final mWindowFlags:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoftInputModeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmToolType(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mToolType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->setImeDisplayId(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRequestedImeVisible(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->setRequestedImeVisible(Z)V

    return-void
.end method

.method public constructor <init>(IIZZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 770
    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIZZZI)V

    return-void
.end method

.method public constructor <init>(IIZZZI)V
    .locals 1

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 826
    iput v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    .line 777
    iput p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    .line 778
    iput p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mWindowFlags:I

    .line 779
    iput-boolean p3, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeFocusChanged:Z

    .line 780
    iput-boolean p4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mHasFocusedEditor:Z

    .line 781
    iput-boolean p5, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mIsStartInputByGainFocus:Z

    .line 782
    iput p6, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mToolType:I

    return-void
.end method


# virtual methods
.method public getRequestImeToken()Landroid/os/IBinder;
    .locals 0

    .line 886
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getSoftInputModeState()I
    .locals 0

    .line 846
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    return p0
.end method

.method public getWindowFlags()I
    .locals 0

    .line 851
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mWindowFlags:I

    return p0
.end method

.method public hasEditorFocused()Z
    .locals 0

    .line 836
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mHasFocusedEditor:Z

    return p0
.end method

.method public hasImeFocusChanged()Z
    .locals 0

    .line 831
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeFocusChanged:Z

    return p0
.end method

.method public isRequestedImeVisible()Z
    .locals 0

    .line 876
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    return p0
.end method

.method public isStartInputByGainFocus()Z
    .locals 0

    .line 841
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mIsStartInputByGainFocus:Z

    return p0
.end method

.method public final setImeDisplayId(I)V
    .locals 0

    .line 861
    iput p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    return-void
.end method

.method public setRequestImeToken(Landroid/os/IBinder;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    return-void
.end method

.method public final setRequestedImeVisible(Z)V
    .locals 0

    .line 871
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImeTargetWindowState{ imeToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imeFocusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeFocusChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasEditorFocused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mHasFocusedEditor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " requestedImeVisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " imeDisplayId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " softInputModeState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mSoftInputModeState:I

    .line 896
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isStartInputByGainFocus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mIsStartInputByGainFocus:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
