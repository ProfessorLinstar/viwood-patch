.class public Lcom/android/server/pm/InstantAppRegistry$1;
.super Lcom/android/server/utils/Watcher;
.source "InstantAppRegistry.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/InstantAppRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$1;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$1;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    invoke-static {p0}, Lcom/android/server/pm/InstantAppRegistry;->-$$Nest$monChanged(Lcom/android/server/pm/InstantAppRegistry;)V

    return-void
.end method
