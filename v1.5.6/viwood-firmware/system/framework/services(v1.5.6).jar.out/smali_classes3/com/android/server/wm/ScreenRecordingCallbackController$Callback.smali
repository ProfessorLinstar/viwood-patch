.class public final Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;
.super Ljava/lang/Object;
.source "ScreenRecordingCallbackController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCallback:Landroid/window/IScreenRecordingCallback;

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/window/IScreenRecordingCallback;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    .line 51
    iput p3, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->unregister(Landroid/window/IScreenRecordingCallback;)V

    return-void
.end method
