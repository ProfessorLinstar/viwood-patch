.class public Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;
.super Ljava/lang/Object;
.source "DimmerAnimationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)Lcom/android/server/wm/AnimationAdapter;
    .locals 0

    .line 402
    new-instance p0, Lcom/android/server/wm/LocalAnimationAdapter;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    return-object p0
.end method
