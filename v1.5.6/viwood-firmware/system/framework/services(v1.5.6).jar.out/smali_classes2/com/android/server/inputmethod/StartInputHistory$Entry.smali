.class public final Lcom/android/server/inputmethod/StartInputHistory$Entry;
.super Ljava/lang/Object;
.source "StartInputHistory.java"


# instance fields
.field public mClientBindSequenceNumber:I

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mImeDisplayId:I

.field public mImeId:Ljava/lang/String;

.field public mImeTokenString:Ljava/lang/String;

.field public mImeUserId:I

.field public mRestarting:Z

.field public mSequenceNumber:I

.field public mStartInputReason:I

.field public mTargetDisplayId:I

.field public mTargetUserId:I

.field public mTargetWindowSoftInputMode:I

.field public mTargetWindowString:Ljava/lang/String;

.field public mTimestamp:J

.field public mWallTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/StartInputInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/StartInputInfo;)V

    return-void
.end method


# virtual methods
.method public set(Lcom/android/server/inputmethod/StartInputInfo;)V
    .locals 2

    .line 107
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mSequenceNumber:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mSequenceNumber:I

    .line 108
    iget-wide v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTimestamp:J

    .line 109
    iget-wide v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mWallTime:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mWallTime:J

    .line 110
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeUserId:I

    .line 113
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    .line 114
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeDisplayId:I

    .line 115
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    .line 116
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mStartInputReason:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mStartInputReason:I

    .line 117
    iget-boolean v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mRestarting:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mRestarting:Z

    .line 118
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetUserId:I

    .line 119
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetDisplayId:I

    .line 122
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 124
    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindowSoftInputMode:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 125
    iget p1, p1, Lcom/android/server/inputmethod/StartInputInfo;->mClientBindSequenceNumber:I

    iput p1, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mClientBindSequenceNumber:I

    return-void
.end method
