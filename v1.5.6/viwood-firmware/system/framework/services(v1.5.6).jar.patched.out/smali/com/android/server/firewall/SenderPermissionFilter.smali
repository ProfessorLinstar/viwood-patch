.class public Lcom/android/server/firewall/SenderPermissionFilter;
.super Ljava/lang/Object;
.source "SenderPermissionFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field public final mPermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/android/server/firewall/SenderPermissionFilter$1;

    const-string/jumbo v1, "sender-permission"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPermissionFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/SenderPermissionFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/firewall/SenderPermissionFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    move p2, p5

    const/4 p5, 0x1

    move-object p3, p1

    move-object p1, p0

    move-object p0, p3

    move p3, p4

    move p4, p7

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/firewall/IntentFirewall;->checkComponentPermission(Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method
