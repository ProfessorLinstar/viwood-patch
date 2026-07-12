.class public Lcom/android/server/display/OverlayDisplayWindow$5;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "OverlayDisplayWindow.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmLiveScale(Lcom/android/server/display/OverlayDisplayWindow;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fputmLiveScale(Lcom/android/server/display/OverlayDisplayWindow;F)V

    .line 389
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    const/4 p0, 0x1

    return p0
.end method
