.class public Lcom/android/server/location/contexthub/ContextHubService$5;
.super Landroid/database/ContentObserver;
.source "ContextHubService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$5;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$5;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$msendAirplaneModeSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;)V

    return-void
.end method
