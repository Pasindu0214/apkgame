.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;
.source "WndInfoMob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoMob$MobTitle;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->description()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTitledMessage;-><init>(Lcom/watabou/noosa/ui/Component;Ljava/lang/String;)V

    return-void
.end method
