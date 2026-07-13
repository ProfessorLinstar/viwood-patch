.class public Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/ExternalDisplayPolicy$Injector;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 6213
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public getDisplayNotificationManager()Lcom/android/server/display/notifications/DisplayNotificationManager;
    .locals 0

    .line 6266
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayNotificationManager(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/notifications/DisplayNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public getExternalDisplayStatsService()Lcom/android/server/display/ExternalDisplayStatsService;
    .locals 0

    .line 6284
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmExternalDisplayStatsService(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/ExternalDisplayStatsService;

    move-result-object p0

    return-object p0
.end method

.method public getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;
    .locals 0

    .line 6239
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 6275
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p0

    return-object p0
.end method

.method public getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;
    .locals 0

    .line 6248
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object p0

    return-object p0
.end method

.method public getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 0

    .line 6257
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p0

    return-object p0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .locals 0

    .line 6229
    const-string/jumbo p0, "thermalservice"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method

.method public sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 0

    .line 6220
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$ExternalDisplayPolicyInjector;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msendDisplayEventLocked(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method
