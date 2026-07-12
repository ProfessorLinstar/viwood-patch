.class public Lcom/android/server/AppStateTrackerImpl$1;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "AppStateTrackerImpl.java"


# instance fields
.field public final synthetic val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .locals 0

    .line 176
    iput-object p2, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    return-void
.end method
