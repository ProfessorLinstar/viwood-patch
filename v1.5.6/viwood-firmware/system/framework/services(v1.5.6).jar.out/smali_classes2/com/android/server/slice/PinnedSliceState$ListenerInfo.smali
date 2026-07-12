.class public Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
.super Ljava/lang/Object;
.source "PinnedSliceState.java"


# instance fields
.field public callingPid:I

.field public callingUid:I

.field public hasPermission:Z

.field public pkg:Ljava/lang/String;

.field public token:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgettoken(Lcom/android/server/slice/PinnedSliceState$ListenerInfo;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/slice/PinnedSliceState;Landroid/os/IBinder;Ljava/lang/String;ZII)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;

    .line 221
    iput-object p3, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->pkg:Ljava/lang/String;

    .line 222
    iput-boolean p4, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->hasPermission:Z

    .line 223
    iput p5, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->callingUid:I

    .line 224
    iput p6, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->callingPid:I

    return-void
.end method
