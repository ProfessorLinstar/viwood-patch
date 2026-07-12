.class public Lcom/android/server/policy/LegacyGlobalActions$4;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "LegacyGlobalActions.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;II)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$4;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$4;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmEmergencyAffordanceManager(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/util/EmergencyAffordanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
