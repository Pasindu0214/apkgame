.class public abstract Lcom/watabou/noosa/particles/Emitter$Factory;
.super Ljava/lang/Object;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/watabou/noosa/particles/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
.end method

.method public lightMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
