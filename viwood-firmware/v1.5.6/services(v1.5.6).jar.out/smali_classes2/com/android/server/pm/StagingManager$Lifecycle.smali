.class public final Lcom/android/server/pm/StagingManager$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StagingManager.java"


# static fields
.field public static sStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_0

    .line 171
    sget-object p0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    if-eqz p0, :cond_0

    .line 172
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->-$$Nest$mmarkStagedSessionsAsSuccessful(Lcom/android/server/pm/StagingManager;)V

    .line 173
    sget-object p0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->-$$Nest$mmarkBootCompleted(Lcom/android/server/pm/StagingManager;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public startService(Lcom/android/server/pm/StagingManager;)V
    .locals 0

    .line 160
    sput-object p1, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    .line 161
    const-class p1, Lcom/android/server/SystemServiceManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SystemServiceManager;

    invoke-virtual {p1, p0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    return-void
.end method
