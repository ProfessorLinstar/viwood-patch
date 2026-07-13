.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:Landroid/app/AlarmManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/app/AlarmManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda14;->f$1:Landroid/app/AlarmManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda14;->f$1:Landroid/app/AlarmManager;

    invoke-static {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$oFSwpeZ_DGzi-fezNRPZy9ildVo(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/app/AlarmManager;)V

    return-void
.end method
