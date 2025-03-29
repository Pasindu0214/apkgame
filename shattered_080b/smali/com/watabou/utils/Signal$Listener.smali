.class public interface abstract Lcom/watabou/utils/Signal$Listener;
.super Ljava/lang/Object;
.source "Signal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/watabou/utils/Signal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onSignal(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
