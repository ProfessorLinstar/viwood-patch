.class public final Lcom/android/server/app/GameManagerService$LocalService;
.super Landroid/app/GameManagerInternal;
.source "GameManagerService.java"

# interfaces
.implements Lcom/android/server/wm/CompatScaleProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/app/GameManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService;Lcom/android/server/app/GameManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/app/GameManagerService$LocalService;-><init>(Lcom/android/server/app/GameManagerService;)V

    return-void
.end method


# virtual methods
.method public getCompatScale(Ljava/lang/String;I)Landroid/content/res/CompatibilityInfo$CompatScale;
    .locals 0

    .line 959
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 960
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 961
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService$LocalService;->getResolutionScalingFactor(Ljava/lang/String;I)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    .line 963
    new-instance p1, Landroid/content/res/CompatibilityInfo$CompatScale;

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p0

    invoke-direct {p1, p2}, Landroid/content/res/CompatibilityInfo$CompatScale;-><init>(F)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getResolutionScalingFactor(Ljava/lang/String;I)F
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$mgetGameModeFromSettingsUnchecked(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)I

    move-result v0

    .line 953
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/app/GameManagerService;->getResolutionScalingFactorInternal(Ljava/lang/String;II)F

    move-result p0

    return p0
.end method
