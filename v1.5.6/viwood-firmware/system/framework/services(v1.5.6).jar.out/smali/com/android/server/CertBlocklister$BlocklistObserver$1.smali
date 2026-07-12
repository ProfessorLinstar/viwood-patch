.class public Lcom/android/server/CertBlocklister$BlocklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlocklister.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/android/server/CertBlocklister$BlocklistObserver;

    invoke-static {p0}, Lcom/android/server/CertBlocklister$BlocklistObserver;->-$$Nest$mwriteDenylist(Lcom/android/server/CertBlocklister$BlocklistObserver;)V

    return-void
.end method
