.class public Lcom/android/server/location/contexthub/ContextHubService$4;
.super Landroid/database/ContentObserver;
.source "ContextHubService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;Landroid/os/Handler;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$4;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$4;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$msendWifiSettingUpdate(Lcom/android/server/location/contexthub/ContextHubService;Z)V

    return-void
.end method
