.class public Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SignedConfigService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/signedconfig/SignedConfigService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 52
    new-instance p0, Lcom/android/server/signedconfig/SignedConfigService;

    invoke-direct {p0, p1}, Lcom/android/server/signedconfig/SignedConfigService;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/server/signedconfig/SignedConfigService;->handlePackageBroadcast(Landroid/content/Intent;)V

    return-void
.end method
