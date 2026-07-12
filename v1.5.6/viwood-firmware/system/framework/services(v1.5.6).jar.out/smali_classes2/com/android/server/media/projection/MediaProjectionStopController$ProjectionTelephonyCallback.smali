.class public final Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "MediaProjectionStopController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionStopController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionStopController;Lcom/android/server/media/projection/MediaProjectionStopController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->callStateChanged()V

    return-void
.end method
