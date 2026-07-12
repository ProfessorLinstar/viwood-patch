.class public Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/globalactions/ToggleAction;
.source "LegacyGlobalActions.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 6

    .line 641
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v4, 0x1040488

    const v5, 0x1040487

    const v1, 0x10803c3

    const v2, 0x10803c2

    const v3, 0x104048a

    move-object v0, p0

    .line 642
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/globalactions/ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 652
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAudioManager(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void

    .line 654
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmAudioManager(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
