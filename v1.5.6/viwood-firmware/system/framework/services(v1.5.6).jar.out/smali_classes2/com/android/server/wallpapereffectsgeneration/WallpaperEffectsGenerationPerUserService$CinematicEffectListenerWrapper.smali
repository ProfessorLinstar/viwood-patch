.class public final Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;
.super Ljava/lang/Object;
.source "WallpaperEffectsGenerationPerUserService.java"


# instance fields
.field public final mListener:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

.field public final mTaskId:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    .line 284
    iput-object p2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    return-void
.end method
