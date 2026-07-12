.class public Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;
.super Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.source "OverlayDisplayAdapter.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object p1, p1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-direct/range {p0 .. p13}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V

    return-void
.end method


# virtual methods
.method public onModeChangedLocked(I)V
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-static {p0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-$$Nest$monActiveModeChangedLocked(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;I)V

    return-void
.end method
