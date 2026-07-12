.class public Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
.super Ljava/lang/Object;
.source "WindowAnimationSpec.java"


# instance fields
.field public final floats:[F

.field public final transformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x9

    .line 274
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowAnimationSpec-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;-><init>()V

    return-void
.end method
