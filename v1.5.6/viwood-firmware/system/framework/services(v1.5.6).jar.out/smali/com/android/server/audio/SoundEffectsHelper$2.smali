.class public Lcom/android/server/audio/SoundEffectsHelper$2;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$2;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$2;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    return-void
.end method
