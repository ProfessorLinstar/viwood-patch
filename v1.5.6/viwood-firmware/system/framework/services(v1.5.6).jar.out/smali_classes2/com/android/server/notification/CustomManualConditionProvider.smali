.class public Lcom/android/server/notification/CustomManualConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "CustomManualConditionProvider.java"


# static fields
.field public static final SIMPLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/android/server/notification/CustomManualConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CustomManualConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0

    .line 65
    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/notification/CustomManualConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ": ENABLED"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 0

    .line 35
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCustomManualConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public onBootComplete()V
    .locals 0

    .line 0
    return-void
.end method

.method public onConnected()V
    .locals 0

    .line 0
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserSwitched(Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    return-void
.end method
