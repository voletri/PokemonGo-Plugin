.class public Lcom/google/android/gms/iid/InstanceIDListenerService;
.super Landroid/app/Service;


# static fields
.field static ACTION:Ljava/lang/String;

.field private static zzaCn:Ljava/lang/String;

.field private static zzaDF:Ljava/lang/String;

.field private static zzaDG:Ljava/lang/String;


# instance fields
.field zzaDD:Lcom/google/android/gms/iid/MessengerCompat;

.field zzaDE:Landroid/content/BroadcastReceiver;

.field zzaDH:I

.field zzaDI:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "action"

    sput-object v0, Lcom/google/android/gms/iid/InstanceIDListenerService;->ACTION:Ljava/lang/String;

    const-string v0, "google.com/iid"

    sput-object v0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDF:Ljava/lang/String;

    const-string v0, "CMD"

    sput-object v0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDG:Ljava/lang/String;

    const-string v0, "gcm.googleapis.com/refresh"

    sput-object v0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaCn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat;

    new-instance v1, Lcom/google/android/gms/iid/InstanceIDListenerService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/iid/InstanceIDListenerService$1;-><init>(Lcom/google/android/gms/iid/InstanceIDListenerService;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/iid/MessengerCompat;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDD:Lcom/google/android/gms/iid/MessengerCompat;

    new-instance v0, Lcom/google/android/gms/iid/InstanceIDListenerService$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/iid/InstanceIDListenerService$2;-><init>(Lcom/google/android/gms/iid/InstanceIDListenerService;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDE:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/iid/zzd;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/iid/zzd;->zzwt()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.iid.InstanceID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDG:Ljava/lang/String;

    const-string v2, "RST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private zza(Landroid/os/Message;I)V
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/iid/zzc;->zzaE(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->getPackageManager()Landroid/content/pm/PackageManager;

    sget v0, Lcom/google/android/gms/iid/zzc;->zzaDP:I

    if-eq p2, v0, :cond_3f

    sget v0, Lcom/google/android/gms/iid/zzc;->zzaDO:I

    if-eq p2, v0, :cond_3f

    const-string v0, "InstanceID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message from unexpected caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gms/iid/zzc;->zzaDO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gms/iid/zzc;->zzaDP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzn(Landroid/content/Intent;)V

    goto :goto_3e
.end method

.method static synthetic zza(Lcom/google/android/gms/iid/InstanceIDListenerService;Landroid/os/Message;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zza(Landroid/os/Message;I)V

    return-void
.end method

.method static zzaD(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.iid.InstanceID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDG:Ljava/lang/String;

    const-string v2, "SYNC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    if-eqz p1, :cond_15

    const-string v0, "com.google.android.gms.iid.InstanceID"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDD:Lcom/google/android/gms/iid/MessengerCompat;

    invoke-virtual {v0}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onCreate()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDE:Landroid/content/BroadcastReceiver;

    const-string v2, "com.google.android.c2dm.permission.RECEIVE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/iid/InstanceIDListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDE:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzgI(I)V

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    move v0, v1

    :goto_a
    return v0

    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.google.android.gms.iid.InstanceID"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v0, v2, :cond_2f

    const-string v0, "GSF"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_42

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    goto :goto_a

    :cond_2f
    :try_start_2f
    invoke-virtual {p0, p1}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzn(Landroid/content/Intent;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_42

    :cond_32
    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    :cond_40
    move v0, v1

    goto :goto_a

    :catchall_42
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stop()V

    throw v0
.end method

.method public onTokenRefresh()V
    .registers 1

    return-void
.end method

.method stop()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDH:I

    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDH:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDI:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->stopSelf(I)V

    :cond_10
    const-string v0, "InstanceID"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "InstanceID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public zzag(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->onTokenRefresh()V

    return-void
.end method

.method zzgI(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDH:I

    iget v0, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDI:I

    if-le p1, v0, :cond_d

    iput p1, p0, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDI:I

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public zzn(Landroid/content/Intent;)V
    .registers 10

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4d

    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    :goto_f
    sget-object v2, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDG:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    const-string v3, "registration_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    :cond_25
    const-string v2, "InstanceID"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "InstanceID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register result in service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzwp()Lcom/google/android/gms/iid/zzc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/zzc;->zzr(Landroid/content/Intent;)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subtype"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/iid/InstanceID;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    goto :goto_f

    :cond_5c
    const-string v3, "InstanceID"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_94

    const-string v3, "InstanceID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    const-string v3, "unregistered"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_af

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzwo()Lcom/google/android/gms/iid/zzd;

    move-result-object v2

    if-nez v1, :cond_a4

    const-string v1, ""

    :cond_a4
    invoke-virtual {v2, v1}, Lcom/google/android/gms/iid/zzd;->zzds(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzwp()Lcom/google/android/gms/iid/zzc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/zzc;->zzr(Landroid/content/Intent;)V

    goto :goto_4c

    :cond_af
    sget-object v3, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaCn:Ljava/lang/String;

    const-string v4, "from"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzwo()Lcom/google/android/gms/iid/zzd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzds(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzag(Z)V

    goto :goto_4c

    :cond_c8
    const-string v3, "RST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzwn()V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzag(Z)V

    goto/16 :goto_4c

    :cond_d8
    const-string v3, "RST_FULL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzwo()Lcom/google/android/gms/iid/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/iid/zzd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzwo()Lcom/google/android/gms/iid/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/iid/zzd;->zzwt()V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzag(Z)V

    goto/16 :goto_4c

    :cond_f6
    const-string v3, "SYNC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10a

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzwo()Lcom/google/android/gms/iid/zzd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzds(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzag(Z)V

    goto/16 :goto_4c

    :cond_10a
    const-string v0, "PING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :try_start_112
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaDF:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/iid/zzc;->zzws()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->send(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_125} :catch_127

    goto/16 :goto_4c

    :catch_127
    move-exception v0

    const-string v0, "InstanceID"

    const-string v1, "Failed to send ping response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c
.end method