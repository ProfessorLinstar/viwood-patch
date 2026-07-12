.class public Lcom/android/server/net/NetworkManagementService$LocalService;
.super Lcom/android/server/net/NetworkManagementInternal;
.source "NetworkManagementService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkManagementService;)V
    .locals 0

    .line 1507
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$LocalService;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkManagementInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkManagementService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkManagementService$LocalService;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public isNetworkRestrictedForUid(I)Z
    .locals 0

    .line 1510
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$LocalService;->this$0:Lcom/android/server/net/NetworkManagementService;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkManagementService;->-$$Nest$misNetworkRestrictedInternal(Lcom/android/server/net/NetworkManagementService;I)Z

    move-result p0

    return p0
.end method
