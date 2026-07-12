.class public Lcom/android/server/uri/UriPermissionOwner$ExternalToken;
.super Landroid/os/Binder;
.source "UriPermissionOwner.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/uri/UriPermissionOwner;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriPermissionOwner;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwner()Lcom/android/server/uri/UriPermissionOwner;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    return-object p0
.end method
