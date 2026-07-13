.class public final Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "ScreenRecordingCallbackController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Lcom/android/server/wm/ScreenRecordingCallbackController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V

    return-void
.end method


# virtual methods
.method public onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-static {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->-$$Nest$monScreenRecordingStart(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/media/projection/MediaProjectionInfo;)V

    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-static {p0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->-$$Nest$monScreenRecordingStop(Lcom/android/server/wm/ScreenRecordingCallbackController;)V

    return-void
.end method
