.class public Lcom/android/server/media/quality/MediaQualityService$1;
.super Landroid/view/SurfaceControlActivePictureListener;
.source "MediaQualityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$1;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/view/SurfaceControlActivePictureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivePicturesChanged([Landroid/view/SurfaceControlActivePicture;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService$1;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {p0, p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mhandleOnActivePicturesChanged(Lcom/android/server/media/quality/MediaQualityService;[Landroid/view/SurfaceControlActivePicture;)V

    return-void
.end method
