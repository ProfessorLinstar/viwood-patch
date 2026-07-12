.class public Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
.super Landroid/content/IntentFilter;
.source "IntentFirewall.java"


# instance fields
.field public final rule:Lcom/android/server/firewall/IntentFirewall$Rule;


# direct methods
.method public static bridge synthetic -$$Nest$fgetrule(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 0

    .line 507
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    return-void
.end method
