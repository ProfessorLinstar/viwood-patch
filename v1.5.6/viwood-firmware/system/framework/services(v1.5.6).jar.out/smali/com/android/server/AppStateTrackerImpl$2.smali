.class public Lcom/android/server/AppStateTrackerImpl$2;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$2;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoRestrictedBucketFeatureFlagChanged(Z)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$2;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAutoRestrictedBucketFeatureFlagChanged(Z)V

    return-void
.end method
