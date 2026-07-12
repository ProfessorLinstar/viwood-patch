.class public Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/wm/BackgroundActivityStartCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 14635
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public final blockTrampoline(I)Z
    .locals 2

    .line 14658
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmRoleObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmRoleObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->isUidExemptFromTrampolineRestrictions(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 v0, 0xd933952

    .line 14659
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0

    :cond_0
    const-wide/32 v0, 0x9fe8a20

    .line 14662
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public canCloseSystemDialogs(Ljava/util/Collection;I)Z
    .locals 0

    .line 14670
    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 p0, 0x9fe8a20

    .line 14671
    invoke-static {p0, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isActivityStartAllowed(Ljava/util/Collection;ILjava/lang/String;)Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;
    .locals 3

    .line 14639
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 14640
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 14641
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    if-eq v0, v2, :cond_0

    .line 14643
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartCallback;->RESULT_TRUE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    return-object p0

    .line 14646
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Indirect notification activity start (trampoline) from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14648
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationTrampolineCallback;->blockTrampoline(I)Z

    move-result p0

    const-string p2, "NotificationService"

    if-eqz p0, :cond_2

    .line 14649
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " blocked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14650
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartCallback;->RESULT_FALSE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    return-object p0

    .line 14652
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", this should be avoided for performance reasons"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14653
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    sget-object p1, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;-><init>(ZLandroid/os/IBinder;)V

    return-object p0
.end method
