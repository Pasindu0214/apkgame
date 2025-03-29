.class public final Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "MagicMissile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 1

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;

    const p2, 0xff4d4d

    const v0, 0x801a1a

    .line 2
    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->random(II)I

    move-result p2

    invoke-virtual {p1, p3, p4, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$ShamanParticle;->reset(FFI)V

    return-void
.end method
