import Image, { type ImageProps } from "next/image";
import { Button } from "@repo/ui/button";
import styles from "./page.module.css";
import { prismaClient } from "db/client";


export default async function Home() {
  const users =await prismaClient.user.findMany();
  return (
    <div >
       {JSON.stringify(users)}
    </div>
  );
}

// export const dynamic= 'force-dynamic'
