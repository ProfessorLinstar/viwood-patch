.class public final Lcom/android/server/inputmethod/StartInputInfo;
.super Ljava/lang/Object;
.source "StartInputInfo.java"


# static fields
.field public static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mClientBindSequenceNumber:I

.field public final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mImeDisplayId:I

.field public final mImeId:Ljava/lang/String;

.field public final mImeToken:Landroid/os/IBinder;

.field public final mImeUserId:I

.field public final mRestarting:Z

.field public final mSequenceNumber:I

.field public final mStartInputReason:I

.field public final mTargetDisplayId:I

.field public final mTargetUserId:I

.field public final mTargetWindow:Landroid/os/IBinder;

.field public final mTargetWindowSoftInputMode:I

.field public final mTimestamp:J

.field public final mWallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/inputmethod/StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/android/server/inputmethod/StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mSequenceNumber:I

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTimestamp:J

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mWallTime:J

    .line 85
    iput p1, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeUserId:I

    .line 86
    iput-object p2, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeToken:Landroid/os/IBinder;

    .line 87
    iput p3, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeDisplayId:I

    .line 88
    iput-object p4, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeId:Ljava/lang/String;

    .line 89
    iput p5, p0, Lcom/android/server/inputmethod/StartInputInfo;->mStartInputReason:I

    .line 90
    iput-boolean p6, p0, Lcom/android/server/inputmethod/StartInputInfo;->mRestarting:Z

    .line 91
    iput p7, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetUserId:I

    .line 92
    iput p8, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetDisplayId:I

    .line 93
    iput-object p9, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    .line 94
    iput-object p10, p0, Lcom/android/server/inputmethod/StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 95
    iput p11, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindowSoftInputMode:I

    .line 96
    iput p12, p0, Lcom/android/server/inputmethod/StartInputInfo;->mClientBindSequenceNumber:I

    return-void
.end method
