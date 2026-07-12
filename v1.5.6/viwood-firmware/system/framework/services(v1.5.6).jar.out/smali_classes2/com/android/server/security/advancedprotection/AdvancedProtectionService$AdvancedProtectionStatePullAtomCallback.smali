.class public Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;
.super Ljava/lang/Object;
.source "AdvancedProtectionService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Lcom/android/server/security/advancedprotection/AdvancedProtectionService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;-><init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 1

    const/16 v0, 0x27fc

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 586
    :cond_0
    iget-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    .line 589
    invoke-static {p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$misAdvancedProtectionEnabledInternal(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStatePullAtomCallback;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    .line 590
    invoke-static {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$mhoursSinceLastChange(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)I

    move-result p0

    .line 587
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZI)Landroid/util/StatsEvent;

    move-result-object p0

    .line 586
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method
