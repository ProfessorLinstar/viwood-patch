.class public Lcom/android/server/audio/SoundEffectsHelper$3;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 282
    invoke-static {p1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$smcleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method
